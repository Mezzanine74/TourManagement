using System;
using System.IO;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.Extensions.Configuration;

namespace TourManagement.Data.Db
{
    public partial class BilgeAdamTourContext : DbContext
    {
        public BilgeAdamTourContext()
        {
        }

        public BilgeAdamTourContext(DbContextOptions<BilgeAdamTourContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AracPark> AracPark { get; set; }
        public virtual DbSet<AracTanzim> AracTanzim { get; set; }
        public virtual DbSet<AracTip> AracTip { get; set; }
        //public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        //public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        //public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        //public virtual DbSet<AspNetUserRoles> AspNetUserRoles { get; set; }
        //public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }
        public virtual DbSet<Bilet> Bilet { get; set; }
        public virtual DbSet<Bolge> Bolge { get; set; }
        public virtual DbSet<Currency> Currency { get; set; }
        public virtual DbSet<Musteri> Musteri { get; set; }
        public virtual DbSet<Otel> Otel { get; set; }
        public virtual DbSet<Pax> Pax { get; set; }
        public virtual DbSet<SatisSorumlusu> SatisSorumlusu { get; set; }
        public virtual DbSet<Sube> Sube { get; set; }
        public virtual DbSet<Tour> Tour { get; set; }
        public virtual DbSet<TourMusteriPax> TourMusteriPax { get; set; }
        public virtual DbSet<TourTip> TourTip { get; set; }
        public virtual DbSet<TurBolgeServisSaatleri> TurBolgeServisSaatleri { get; set; }
        public virtual DbSet<Uyruk> Uyruk { get; set; }
        public virtual DbSet<View_BiletSatis> View_BiletSatis { get; set; }
        public virtual DbSet<__MigrationHistory> __MigrationHistory { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            IConfigurationRoot configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile(@Directory.GetCurrentDirectory() + "/../TourManagement.WebApi/appsettings.json").Build();

            var connectionString = configuration.GetConnectionString("DefaultConnection");

            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(connectionString);
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AracPark>(entity =>
            {
                entity.HasIndex(e => e.AracPlakasi)
                    .HasName("IX_Arac")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.AracPlakasi)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);

                entity.HasOne(d => d.AracTip)
                    .WithMany(p => p.AracPark)
                    .HasForeignKey(d => d.AracTipId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_AracPark_AracTip");
            });

            modelBuilder.Entity<AracTanzim>(entity =>
            {
                entity.HasIndex(e => new { e.TourId, e.TourMusteriPaxId })
                    .HasName("IX_AracTanzim")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);

                entity.HasOne(d => d.AracPark)
                    .WithMany(p => p.AracTanzim)
                    .HasForeignKey(d => d.AracParkId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_AracTanzim_AracPark");

                entity.HasOne(d => d.Tour)
                    .WithMany(p => p.AracTanzim)
                    .HasForeignKey(d => d.TourId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_AracTanzim_Tour");
            });

            modelBuilder.Entity<AracTip>(entity =>
            {
                entity.HasIndex(e => e.AracTipAdi)
                    .HasName("IX_AracTip")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.AracTipAdi)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);
            });

            //modelBuilder.Entity<AspNetRoles>(entity =>
            //{
            //    entity.HasIndex(e => e.Name)
            //        .HasName("RoleNameIndex")
            //        .IsUnique();

            //    entity.Property(e => e.Id).HasMaxLength(128);

            //    entity.Property(e => e.Name)
            //        .IsRequired()
            //        .HasMaxLength(256);
            //});

            //modelBuilder.Entity<AspNetUserClaims>(entity =>
            //{
            //    entity.HasIndex(e => e.UserId)
            //        .HasName("IX_UserId");

            //    entity.Property(e => e.UserId)
            //        .IsRequired()
            //        .HasMaxLength(128);

            //    entity.HasOne(d => d.User)
            //        .WithMany(p => p.AspNetUserClaims)
            //        .HasForeignKey(d => d.UserId)
            //        .HasConstraintName("FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId");
            //});

            //modelBuilder.Entity<AspNetUserLogins>(entity =>
            //{
            //    entity.HasKey(e => new { e.LoginProvider, e.ProviderKey, e.UserId })
            //        .HasName("PK_dbo.AspNetUserLogins");

            //    entity.HasIndex(e => e.UserId)
            //        .HasName("IX_UserId");

            //    entity.Property(e => e.LoginProvider).HasMaxLength(128);

            //    entity.Property(e => e.ProviderKey).HasMaxLength(128);

            //    entity.Property(e => e.UserId).HasMaxLength(128);

            //    entity.HasOne(d => d.User)
            //        .WithMany(p => p.AspNetUserLogins)
            //        .HasForeignKey(d => d.UserId)
            //        .HasConstraintName("FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId");
            //});

            //modelBuilder.Entity<AspNetUserRoles>(entity =>
            //{
            //    entity.HasKey(e => new { e.UserId, e.RoleId })
            //        .HasName("PK_dbo.AspNetUserRoles");

            //    entity.HasIndex(e => e.RoleId)
            //        .HasName("IX_RoleId");

            //    entity.HasIndex(e => e.UserId)
            //        .HasName("IX_UserId");

            //    entity.Property(e => e.UserId).HasMaxLength(128);

            //    entity.Property(e => e.RoleId).HasMaxLength(128);

            //    entity.HasOne(d => d.Role)
            //        .WithMany(p => p.AspNetUserRoles)
            //        .HasForeignKey(d => d.RoleId)
            //        .HasConstraintName("FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId");

            //    entity.HasOne(d => d.User)
            //        .WithMany(p => p.AspNetUserRoles)
            //        .HasForeignKey(d => d.UserId)
            //        .HasConstraintName("FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId");
            //});

            //modelBuilder.Entity<AspNetUsers>(entity =>
            //{
            //    entity.HasIndex(e => e.UserName)
            //        .HasName("UserNameIndex")
            //        .IsUnique();

            //    entity.Property(e => e.Id).HasMaxLength(128);

            //    entity.Property(e => e.Email).HasMaxLength(256);

            //    entity.Property(e => e.LockoutEndDateUtc).HasColumnType("datetime");

            //    entity.Property(e => e.UserName)
            //        .IsRequired()
            //        .HasMaxLength(256);
            //});

            modelBuilder.Entity<Bilet>(entity =>
            {
                entity.HasIndex(e => new { e.TourId, e.MusteriId })
                    .HasName("IX_Bilet")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.BiletNo)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.BiletTarihi).HasColumnType("smalldatetime");

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.Paid).HasColumnType("numeric(12, 2)");

                entity.Property(e => e.Total).HasColumnType("numeric(12, 2)");

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);

                entity.HasOne(d => d.Currency)
                    .WithMany(p => p.Bilet)
                    .HasForeignKey(d => d.CurrencyId)
                    .HasConstraintName("FK_Bilet_Currency");

                entity.HasOne(d => d.Musteri)
                    .WithMany(p => p.Bilet)
                    .HasForeignKey(d => d.MusteriId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Bilet_Musteri");

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.Bilet)
                    .HasForeignKey(d => d.SubeId)
                    .HasConstraintName("FK_Bilet_Sube");

                entity.HasOne(d => d.Tour)
                    .WithMany(p => p.Bilet)
                    .HasForeignKey(d => d.TourId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Bilet_Tour");
            });

            modelBuilder.Entity<Bolge>(entity =>
            {
                entity.HasIndex(e => e.BolgeAdi)
                    .HasName("IX_Bolge")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.BolgeAdi)
                    .IsRequired()
                    .HasMaxLength(255);

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);
            });

            modelBuilder.Entity<Currency>(entity =>
            {
                entity.HasIndex(e => e.KurAdi)
                    .HasName("IX_Currency")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.KurAdi)
                    .IsRequired()
                    .HasMaxLength(10);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);
            });

            modelBuilder.Entity<Musteri>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.MusteriAdiSoyadi)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.OdaNo)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);

                entity.HasOne(d => d.Otel)
                    .WithMany(p => p.Musteri)
                    .HasForeignKey(d => d.OtelId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Musteri_Otel");

                entity.HasOne(d => d.Uyruk)
                    .WithMany(p => p.Musteri)
                    .HasForeignKey(d => d.UyrukId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Musteri_Uyruk");
            });

            modelBuilder.Entity<Otel>(entity =>
            {
                entity.HasIndex(e => new { e.BolgeId, e.OtelAdi })
                    .HasName("IX_Otel")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.OtelAdi)
                    .IsRequired()
                    .HasMaxLength(255);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);

                entity.HasOne(d => d.Bolge)
                    .WithMany(p => p.Otel)
                    .HasForeignKey(d => d.BolgeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Otel_Bolge");
            });

            modelBuilder.Entity<Pax>(entity =>
            {
                entity.HasIndex(e => e.PaxAdi)
                    .HasName("IX_Pax")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.PaxAdi)
                    .IsRequired()
                    .HasMaxLength(1);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);
            });

            modelBuilder.Entity<SatisSorumlusu>(entity =>
            {
                entity.HasIndex(e => new { e.AdiSoyadi, e.SubeId })
                    .HasName("IX_SatisSorumlusu")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.AdiSoyadi)
                    .IsRequired()
                    .HasMaxLength(255);

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);

                entity.HasOne(d => d.Sube)
                    .WithMany(p => p.SatisSorumlusu)
                    .HasForeignKey(d => d.SubeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SatisSorumlusu_Sube");
            });

            modelBuilder.Entity<Sube>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.SubeAdi)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);
            });

            modelBuilder.Entity<Tour>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.Tarih).HasColumnType("smalldatetime");

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);

                entity.HasOne(d => d.TourTip)
                    .WithMany(p => p.Tour)
                    .HasForeignKey(d => d.TourTipId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Tour_TourTip");
            });

            modelBuilder.Entity<TourMusteriPax>(entity =>
            {
                entity.HasIndex(e => new { e.PaxId, e.BiletId })
                    .HasName("IX_TourMusteriPax")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.PaxInfo).HasMaxLength(255);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);

                entity.HasOne(d => d.Bilet)
                    .WithMany(p => p.TourMusteriPax)
                    .HasForeignKey(d => d.BiletId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TourMusteriPax_Bilet");

                entity.HasOne(d => d.Pax)
                    .WithMany(p => p.TourMusteriPax)
                    .HasForeignKey(d => d.PaxId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TourMusteriPax_Pax");
            });

            modelBuilder.Entity<TourTip>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.TourAdi)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);
            });

            modelBuilder.Entity<TurBolgeServisSaatleri>(entity =>
            {
                entity.HasIndex(e => new { e.TourTipId, e.BolgeId })
                    .HasName("IX_TurBolgeServisSaatleri")
                    .IsUnique();

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);
            });

            modelBuilder.Entity<Uyruk>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description).HasMaxLength(255);

                entity.Property(e => e.UyrukAdi)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.WhoDeleted).HasMaxLength(256);

                entity.Property(e => e.WhoInserted).HasMaxLength(256);

                entity.Property(e => e.WhoUpdated).HasMaxLength(256);
            });

            modelBuilder.Entity<View_BiletSatis>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("View_BiletSatis");

                entity.Property(e => e.BiletNo)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.BiletTarihi).HasColumnType("smalldatetime");

                entity.Property(e => e.KurAdi)
                    .IsRequired()
                    .HasMaxLength(10);

                entity.Property(e => e.MusteriAdiSoyadi)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.OtelAdi)
                    .IsRequired()
                    .HasMaxLength(255);

                entity.Property(e => e.Paid).HasColumnType("numeric(12, 2)");

                entity.Property(e => e.SubeAdi)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Tarih).HasColumnType("smalldatetime");

                entity.Property(e => e.Total).HasColumnType("numeric(12, 2)");

                entity.Property(e => e.TourAdi)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.UyrukAdi)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<__MigrationHistory>(entity =>
            {
                entity.HasKey(e => new { e.MigrationId, e.ContextKey })
                    .HasName("PK_dbo.__MigrationHistory");

                entity.Property(e => e.MigrationId).HasMaxLength(150);

                entity.Property(e => e.ContextKey).HasMaxLength(300);

                entity.Property(e => e.Model).IsRequired();

                entity.Property(e => e.ProductVersion)
                    .IsRequired()
                    .HasMaxLength(32);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
