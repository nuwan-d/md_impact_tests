%% Nuwan Dewapriya 
%% 2021/05/20
%% This code extracts data from the LAMMPS output file "bullet_z_v_data.dump" and plot the position and velocity plot of the projectile.

%% Extract data

[fid] = fopen('bullet_z_v_data.dump');
 
text = fscanf(fid,'%s ',7);

[data,count] = fscanf(fid, '%*f %*f %f %*f %*f %f',[2,inf]);
    
fclose(fid);

data = data';

bullet_info(1:size(data,1),1:3) = 0;
bullet_info(:,1) = 0:1:size(data,1)-1;
bullet_info(:,1) = bullet_info(:,1)*0.2*100/1000; % time in ps
bullet_info(:,2:3) = data;
bullet_info(:,3) = bullet_info(:,3)*-10^5; % speed in m/s


%% Plot

figure
colororder({'r','k'})
yyaxis left
plot(bullet_info(:,1),bullet_info(:,3),'-r','LineWidth',2)
xlabel(' Time (ps)','FontName','Arial','fontsize',12) % ,'fontweight','b'
ylabel('Velocity (m/s)','FontName','Arial','fontsize',12)

yyaxis right
plot(bullet_info(:,1),bullet_info(:,2)./10,'-k','LineWidth',2)
ylabel('Z-coordinate (nm)','FontName','Arial','fontsize',12)
grid off
set(gca,'LineWidth',1,'Fontsize',9)
set(gca,'FontName','Arial')
