  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!--Logo-->
    <a href="#" class="brand-link">
      <img src="{{asset('AdminLTE-3.2.0')}}/dist/img/pim.png" alt="AdminLTE Logo" class="brand-image img-rectangle elevation-5" style="opacity: .8">
      <span class="brand-text font-weight-light">PT PIM Pharmaceuticals</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('AdminLTE-3.2.0')}}/dist/img/firman.jpg" class="img-rectangle elevation-3" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Muhammad Firman R</a>
        </div>
      </div>
      
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item ">
            <a href="/dashboard" class="nav-link @yield('dashboard')">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/absensi" class="nav-link @yield('absensi')">
            <i class="nav-icon far fa-calendar-alt"></i>
              <p>
                Absensi
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/pegawai" class="nav-link @yield('pegawai')">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Pegawai
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/gaji" class="nav-link @yield('gaji')">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Gaji
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/pendidikan" class="nav-link @yield('pendidikan')">
              <i class="nav-icon fas fa-graduation-cap"></i>
              <p>
                Pendidikan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/ijin" class="nav-link @yield('jenis')">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Jenis Ijin
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/pengembangan" class="nav-link @yield('pengembangan')">
              <i class="nav-icon fas fa-tree"></i>
              <p>
                Pengembangan Diri
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/pengguna" class="nav-link @yield('pengguna')">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Pengguna
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/pengajuan" class="nav-link @yield('pengajuan')">
              <i class="nav-icon far fa-envelope"></i>
              <p>
                Pengajuan Ijin
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/tunjangan" class="nav-link @yield('tunjangan')">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Tunjangan
              </p>
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </aside>