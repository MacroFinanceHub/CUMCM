function [ lat,lot ] = geohashoff( geoh )
%geohash����    
Len=7;
% Base32����    
Base32= '0123456789bcdefghjkmnpqrstuvwxyz';
% geohΪ�������ı��룬���ַ���

%��ǰ����λ����ż��
odd = true ;
latitude=[-90,90];%γ��
longitude=[-180, 180];%����
for i=1:Len
   for j=1:32
            if(Base32(j)==geoh(i))
                bits=j-1;    % �ҵ���i���ַ���Ӧ����
                break;
            end
    end

    for jj=1:5
            j=6-jj;
        switch j    
            case 5
                ad=16;
            case 4
                ad=8;
            case 3
                ad=4;
            case 2
                ad=2;
            case 1
                ad=1;
        end
            
          if  bitand(bits,ad)
              bit=1;
          else
              bit=0;
          end      % ȡ����Ӧ��λ
            if odd
                mid = (longitude(1) + longitude(2)) / 2;
                if bit==0
                    longitude(2)= mid;
                else
                    longitude(1)= mid;
                end
                    
                
            else
            
                mid = (latitude(1) + latitude(2)) / 2;
                if bit==0
                    latitude(2)= mid;
                else
                    latitude(1)= mid;
                end
            end
            
            
            odd = ~odd;
    end
    
end

    lat = (latitude(1) + latitude(2)) / 2;
    lot = (longitude(1) + longitude(2)) / 2;
end