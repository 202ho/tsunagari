package com.tsunagari.reservation;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long> {

    List<Reservation> findByMemberId(Long memberId);
    List<Reservation> findByActivityId(Long ActivityId);
    Optional<Reservation> findById(Long id);
    Page<Reservation> findByMemberIdOrderByDateDesc(Long memberId, Pageable pageable);

    @Query("SELECT new com.tsunagari.reservation.MonthDayReservation( r.activity.id, r.date, r.activity.title, r.activity.address, COUNT(r)) FROM Reservation r " +
            "JOIN r.activity a " +
            "WHERE a.hostid = :hostId AND FUNCTION('YEAR', r.date) = :year AND FUNCTION('MONTH', r.date) = :month " +
            "GROUP BY r.activity.id, r.date")
    List<MonthDayReservation> findGroupedByActivityAndDate(@Param("hostId") Long hostId, @Param("year") int year, @Param("month") int month);

    @Query("SELECT new com.tsunagari.reservation.RevenueReservation( a.id, a.title, COUNT(r), SUM(a.price)) FROM Reservation r " +
            "JOIN r.activity a " +
            "WHERE a.hostid = :hostId AND FUNCTION('YEAR', r.date) = :year AND FUNCTION('MONTH', r.date) = :month " +
            "GROUP BY a.id, a.title")
    List<RevenueReservation> findGroupedByActivity(@Param("hostId") Long hostId, @Param("year") int year, @Param("month") int month);
}
