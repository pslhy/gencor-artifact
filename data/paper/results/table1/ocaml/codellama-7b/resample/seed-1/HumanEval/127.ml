(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec intersection (interval1 :  int * int) (interval2 :  int * int) : string =
match (interval1, interval2) with
| ((start1, end1), (start2, end2)) when start1 > end2 || end1 < start2 -> "NO"
| (_, (start, end)) when start = end -> "NO"
| ((start1, end1), (start2, end2)) when start1 >= start2 && end1 <= end2 ->
begin
let lengthOfIntersection = end1 - start1 + 1
let isPrime = 
match lengthOfIntersection with
| 1 -> true
| 2 -> true
| 3 -> true
| 5 -> true
| 7 -> true
| _ -> false
end
if isPrime then "YES" else "NO"
end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:15: Syntax error: "pattern" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec intersection (interval1 :  int * int) (interval2 :  int * int) : string =

 if start1 > end2 || start2 > end1 then

   "NO"

 let start = max start1 start2

 let end_ = min end1 end2

 let lengthOfIntersection = end_ - start + 1

 let isPrime = 

   match lengthOfIntersection with

   | 1 -> true

   | 2 -> true

   | 3 -> true

   | 5 -> true

   | 7 -> true

   | _ -> false

   in

   if isPrime then

     "YES"

   else

     "NO"`
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:29:4: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec intersection (interval1 :  int * int) (interval2 :  int * int) : string =
  if start1 > end2 || start2 > end1 then
    "NO"
    else
      let start = max start1 start2
      and end_ = min end1 end2
      in
      let lengthOfIntersection = end_ - start + 1
      in
      let isPrime =
        match lengthOfIntersection with
        | 1 -> true
        | 2 -> true
        | 3 -> true
        | 5 -> true
        | 7 -> true
        | _ -> false
      in
      if isPrime then
        "YES"
      else
        "NO"

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:6: Unbound value "start1" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec intersection (interval1 :  int * int) (interval2 :  int * int) : string =
  if start1 > end2 || start2 > end1 then
    "NO"
    else
      let start = max start1 start2
      and end_ = min end1 end2
      in
      let lengthOfIntersection = end_ - start + 1
      in
      let isPrime =
        match lengthOfIntersection with
        | 1 -> true
        | 2 -> true
        | 3 -> true
        | 5 -> true
        | 7 -> true
        | _ -> false
      in
      if isPrime then
        "YES"
      else
        "NO"

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:6: Unbound value "start1" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec intersection (interval1 :  int * int) (interval2 :  int * int) : string =
  if (fst interval1) > (snd interval2) || (fst interval2) > (snd interval1) then
    "NO"
  else
    let start = min (fst interval1) (fst interval2)
    and end_ = max (snd interval1) (snd interval2)
    in
    let lengthOfIntersection = end_ - start + 1
    in
    let isPrime =
      match lengthOfIntersection with
      | 1 -> true
      | 2 -> true
      | 3 -> true
      | 5 -> true
      | 7 -> true
      | _ -> false
    in
    if isPrime then
      "YES"
    else
      "NO"

