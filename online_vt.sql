/*Sağlık Anketininin 16. sorusuna kaç kişi Özel Hastaneler cevabını vermiş?*/

CREATE VIEW VerilenCevabaGoreKisiSayisi AS
SELECT a.`anket_adi` Anketin_Adi, s.`soru` Soru, ca.`aciklama` Cevap, COUNT(s.`id`) AS Toplam_Kisi  FROM anketler a 
INNER JOIN anket_sorulari ans ON a.`id`=ans.`anket_id` INNER JOIN verilmis_cevaplar vc ON ans.`soru_id`=vc.`soru_id` 
INNER JOIN sorular s ON vc.`soru_id`=s.`id` INNER JOIN cevap_aciklamalari ca ON vc.`cevap_id`=ca.`id` WHERE ca.`aciklama`='Özel Hastaneleri';