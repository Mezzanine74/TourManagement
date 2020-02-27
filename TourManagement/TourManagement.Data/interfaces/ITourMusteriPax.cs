namespace TourManagement.Data.interfaces
{
    public interface ITourMusteriPax
    {
        int BiletId { get; set; }
        int PaxId { get; set; }
        int PaxAdedi { get; set; }
        string PaxInfo { get; set; }
    }
}