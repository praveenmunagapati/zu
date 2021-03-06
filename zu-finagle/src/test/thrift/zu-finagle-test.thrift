namespace java zu.finagle.test

struct Req{
  1: optional string s
}

struct Resp{
  1: required i32 len
}

struct Req2{
  1: optional i32 num
}

struct Resp2{
  1: optional set<i32> vals
}

service StrLenService {
  Resp strlen(1: Req req);
}

service ReqService {
  Resp2 handle(1: Req2 req);
}
