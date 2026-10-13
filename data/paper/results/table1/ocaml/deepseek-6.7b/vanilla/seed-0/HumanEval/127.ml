let rec intersection (interval1 :  int * int) (interval2 :  int * int) : string =
    let (start1, end1) = interval1
    and (start2, end2) = interval2 in
    if start1 > end1 || start2 > end2 then "NO"
    else if start1 > end2 || start2 > end1 then "NO"
    else
        let start = max start1 start2
        and end_ = min end1 end2 in
        if start > end_ then "NO"
        else
            let length = end_ - start + 1 in
            if length <= 1 then "NO"
            else if length <= 3 then "YES"
            else
                let rec is_prime n i =
                    if n <= 2 then (n = i)
                    else if i * i > n then true
                    else if n mod i = 0 then false
                    else is_prime n (i+1) in
                if is_prime length 2 then "YES" else "NO"
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
