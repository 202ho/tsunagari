package com.tsunagari.reservation.service;

import com.tsunagari.activity.entity.Activity;
import com.tsunagari.reservation.entity.Reservation;
import com.tsunagari.reservation.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {

    @Autowired
    private ReservationRepository reservationRepository;

    public Page<Reservation> getReservationsByGuestId(Long guestid, int pageNumber, int pageSize) {
        Pageable pageable = PageRequest.of(pageNumber, pageSize);
        return reservationRepository.findByGuestidOrderByDateDesc(guestid, pageable);
    }
}
