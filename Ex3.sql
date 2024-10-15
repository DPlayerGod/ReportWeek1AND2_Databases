USE congty;

SELECT nv.manv, concat(nv.honv, ' ', nv.tenlot, ' ', nv.tennv) AS ho_ten, count(tn.tentn) AS sl_con
FROM nhanvien nv
LEFT JOIN thannhan tn ON (nv.manv = tn.ma_nvien AND (tn.quanhe = "Con gai" OR tn.quanhe = "Con trai"))
GROUP BY nv.manv;