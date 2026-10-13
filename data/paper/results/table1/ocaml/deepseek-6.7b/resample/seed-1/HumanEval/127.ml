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
    match interval1, interval2 with
    | (start1, end1), (start2, end2) ->
        let starts = max start1 start2
        let ends = min end1 end2
        if starts > ends then
            "NO"
        else
            let len = ends - starts + 1
            if is_prime len then
                "YES"
            else
                "NO"

and is_prime n =
    if n < 2 then
        false
    else
        let rec loop i =
            if i * i > n then
                true
            else if n mod i = 0 then
                false
            else
                loop (i + 1)
        in
        loop 2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec intersection (interval1 :  int * int) (interval2 :  int * int) : string =
    match interval1, interval2 with
    | (start1, end1), (start2, end2) ->
        let starts = max start1 start2 in
        let ends = min end1 end2 in
        if starts > ends then
            "NO"
        else
            let len = ends - starts + 1 in
            if is_prime len then
                "YES"
            else
                "NO"

and is_prime n =
    if n < 2 then
        false
    else
        let rec loop i =
            if i * i > n then
                true
            else if n mod i = 0 then
                false
            else
                loop (i + 1)
        in
        loop 2

