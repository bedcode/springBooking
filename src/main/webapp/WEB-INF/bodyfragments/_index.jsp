<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-table fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">12</div>
                                    <div>Nuove prenotazioni</div>
                                </div>
                            </div>
                        </div>
                        <a href="${pageContext.request.contextPath}/bookings">
                            <div class="panel-footer">
                                <span class="pull-left">Vedi Dettagli</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">124</div>
                                    <div>Risorse</div>
                                </div>
                            </div>
                        </div>
                        <a href="${pageContext.request.contextPath}/resource">
                            <div class="panel-footer">
                                <span class="pull-left">Vedi Dettagli</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-envelope fa-fw"></i> Pannello Ritardi
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted small">
                                        <em>Ieri</em>
                                    </span>
                                </div>
                                <div>Ritardo riconsegna computer Dell</div>
                                </a>
                                <a href="#" class="list-group-item">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted small">
                                        <em>19/11/2018</em>
                                    </span>
                                </div>
                                <div>Ritardo riconsegna auto</div>
                                </a>
                            </div>
                            <!-- /.list-group -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-wrapper -->
        
</body>
</html>