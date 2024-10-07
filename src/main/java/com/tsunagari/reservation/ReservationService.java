package com.tsunagari.reservation;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.activity.repository.ActivityRepository;
import com.tsunagari.user.entity.Member;
import com.tsunagari.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class ReservationService {

    @Autowired
    private ReservationRepository reservationRepository;

    @Autowired
    private ActivityRepository activityRepository;

    //Member를 담은 userRepository
    @Autowired
    private UserRepository userRepository;

    //activity 엔티티에서 id 조회
    public Activity getActivityById(Long activityId){
        return activityRepository.findById(activityId).orElseThrow(() ->new IllegalArgumentException("Activity not found"));

    }

    //member - userid 조회
    public Member getmemberById(Long memberId){
        return userRepository.findById(memberId).orElseThrow(() -> new IllegalArgumentException("Member not found"));
    }

    //예약정보 저장
    public void createReservation(Long memberId, Long activityId, String date) throws ParseException {
        Member member = getmemberById(memberId); //조회
        Activity activity = getActivityById(activityId); //조회

        //String date -> Date date 변환
        //입력받을 때 String / 엔티티 저장 할 때 date
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date reseravtionDate = dateFormat.parse(date);

        Reservation reservation = new Reservation(0, member, activity, new Date());   //예약생성

        reservationRepository.save(reservation);     //예약저장
    }

    public Page<Reservation> getReservationsByGuestId(Long memberId, int pageNumber, int pageSize) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize);
        return reservationRepository.findByMemberIdOrderByDateDesc(memberId, pageable);
    }

    public List<MonthDayReservation>  getGroupedReservations(Long hostId, String dateString) {
        String[] parts = dateString.split("-");
        int year = Integer.parseInt(parts[0]);
        int month = Integer.parseInt(parts[1]);
        List<Object[]> results = reservationRepository.findGroupedByActivityAndDate(hostId, year, month);
        List<MonthDayReservation> ret = new ArrayList();
        for (Object[] result : results) {
            Integer activityId = (Integer) result[0];
            Date date = (Date) result[1];
            String title = (String) result[2];
            String address = (String) result[3];
            Long count = ((Number) result[4]).longValue();
            MonthDayReservation reserv = new MonthDayReservation(activityId,date,title,address,count);
            ret.add(reserv);
        }
        return ret;
    }

    public List<RevenueReservation>  findGroupedByActivity(Long hostId, String dateString) {
        String[] parts = dateString.split("-");
        int year = Integer.parseInt(parts[0]);
        int month = Integer.parseInt(parts[1]);
        List<Object[]> results = reservationRepository.findGroupedByActivity(hostId, year, month);
        List<RevenueReservation> ret = new ArrayList();

        for (Object[] result : results) {
            Integer activityId = (Integer) result[0];
            String title = (String) result[1];
            Long count = ((Number) result[2]).longValue();
            Long priceTotal = ((Number) result[3]).longValue();

            RevenueReservation reservation = new RevenueReservation(activityId,title,count,priceTotal);
            ret.add(reservation);
        }
        return ret;
    }


    public boolean deleteReservationById(Long id) {
        Optional<Reservation> reservation = reservationRepository.findById(id);
        if (reservation.isPresent()) {
            reservationRepository.deleteById(id);
            return true;
        } else {
            return false;
        }
    }


}
