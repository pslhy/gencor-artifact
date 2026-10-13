let rec intersection (interval1 :  int * int) (interval2 :  int * int) : string =
  let ((s1, e1), (s2, e2)) = (interval1, interval2) in
  if (s1 > s2) then intersection interval2 interval1 
  else 
    let intersection_end = min e1 e2 and intersection_start = max s1 s2 in
    if intersection_start > intersection_end then "NO" 
    else
      let intersection_length = intersection_end - intersection_start in
      if intersection_length < 2 then "NO" 
      else if intersection_length = 2 then "YES"
      else
        let rec check i =
          if i * i > intersection_length then true
          else if intersection_length mod i = 0 then false
          else check (i + 1)
        in
        if check 2 then "YES" else "NO"
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given two intervals, *)
(*     where each interval is a pair of integers. For example, interval = (start, end) = (1, 2). *)
(*     The given intervals are closed which means that the interval (start, end) *)
(*     includes both start and end. *)
(*     For each given interval, it is assumed that its start is less or equal its end. *)
(*     Your task is to determine whether the length of intersection of these two *)
(*     intervals is a prime number. *)
(*     Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3) *)
(*     which its length is 1, which not a prime number. *)
(*     If the length of the intersection is a prime number, return "YES", *)
(*     otherwise, return "NO". *)
(*     If the two intervals don't intersect, return "NO". *)
(*     [input/output] samples: *)
(*     >>> intersection (1, 2) (2, 3) *)
(*     "NO" *)
(*     >>> intersection ((-1), 1) (0, 4) *)
(*     "NO" *)
(*     >>> intersection ((-3), (-1)) ((-5), 5) *)
(*     "YES" *)
