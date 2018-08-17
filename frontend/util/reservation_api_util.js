export const createReservation = reservation => (
    $.ajax({
        method: 'POST',
        url: `api/reservations`,
        data: {
            reservation
        }
    })
);

// export const fetchReservation = id => (
//     $.ajax({
//         method: 'GET',
//         url: `api/reservations/${id}`,
//     })
// );