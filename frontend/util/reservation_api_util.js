export const createReservation = reservation => (
    $.ajax({
        method: "POST",
        url: `api/reservations`,
        data: {
            reservation
        }
    })
);