<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Nav</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-blue">
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNav"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse pl-4 pr-4 mp0" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link text-light" href="./home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light" href="./department">Department</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light" href="./about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light" href="./contact">Contact</a>
          </li>
        </ul>
        <form class="form-inline ml-auto">
          <input
            class="form-control mr-sm-2"
            type="search"
            placeholder="Search"
            aria-label="Search"
          />
          <button
            class="btn btn-outline-primary my-2 my-sm-0 btn-light"
            type="submit"
          >
            Search
          </button>
        </form>
      </div>
    </nav>

    <div class="container-fluid pt-4">
      <div class="row pl-4 med-l">
        <div class="col-md-6 text-left">
          <img
            src="https://uicookies.com/demo/theme/health/images/logo.png"
            alt=""
          />
        </div>
        <div class="col-md-6 ">
          <div style="display: flex; align-items: center; justify-content: end;" class="mr-5 med-l" >
            <span style="margin-right: 10px;">
              <i class="fas fa-phone c-blue" style="font-size: 32px;"></i>
            </span>
            <div>
              <h4 class="c-blue">94635656633</h4>
              <a href="" class="text-decoration-none">Appointment</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </body>
</html>
