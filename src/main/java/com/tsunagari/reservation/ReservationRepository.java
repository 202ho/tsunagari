package com.tsunagari.reservation;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long> {

    List<Reservation> findByMemberId(Long memberId);
    List<Reservation> findByActivityId(Long ActivityId);
    Optional<Reservation> findById(Long id);
    Page<Reservation> findByMemberIdOrderByDateDesc(Long memberId, Pageable pageable);
}
