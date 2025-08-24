trigger BookingTrigger on Booking__c (after insert) {

    if (Trigger.isAfter && Trigger.isInsert) {

// creates Booking Payment records

        BookingTriggerHandler.createPaymentRecords(Trigger.new);   

// creates BookingGuests records

      BookingTriggerHandler.createBookingGuests(Trigger.new);     }

}