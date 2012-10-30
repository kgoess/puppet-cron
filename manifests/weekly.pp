define cron::weekly( $minute = 0, $hour = 0, $weekday = 0, $environment = [], $user = 'root', $command ) {
  cron::job {
    $name:
      minute      => $minute,
      hour        => $hour,
      date        => '*',
      month       => '*',
      weekday     => $weekday,
      user        => $user,
      environment => $environment,
      command     => $command;
  }
}

