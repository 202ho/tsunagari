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
    public boolean createReservation( Long activityId,Long memberId, String date)  {
        Member member = getmemberById(memberId); //조회
        Activity activity = getActivityById(activityId); //조회

        try {
            //String date -> Date date 변환
            //입력받을 때 String / 엔티티 저장 할 때 date
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date reseravtionDate = dateFormat.parse(date);

            Reservation reservation = new Reservation( member, activity, reseravtionDate);   //예약생성

            reservationRepository.save(reservation);     //예약저장
            return  true;
        } catch (Exception e) {
            System.out.println("createReservation error");
            e.printStackTrace();
            return  false;
        }

    }

    public Page<Reservation> getReservationsByGuestId(Long memberId, int pageNumber, int pageSize) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize);
        return reservationRepository.findByMemberIdOrderByDateDesc(memberId, pageable);
    }

    public List<MonthDayReservation>  getGroupedReservations(Long hostId, String dateString) {
        String[] parts = dateString.split("-");
        int year = Integer.parseInt(parts[0]);
        int month = Integer.parseInt(parts[1]);
        List<MonthDayReservation> results = reservationRepository.findGroupedByActivityAndDate(hostId, year, month);
        return results;
    }

    public List<RevenueReservation>  findGroupedByActivity(Long hostId, String dateString) {
        String[] parts = dateString.split("-");
        int year = Integer.parseInt(parts[0]);
        int month = Integer.parseInt(parts[1]);
        List<RevenueReservation> results = reservationRepository.findGroupedByActivity(hostId, year, month);
        return results;
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
