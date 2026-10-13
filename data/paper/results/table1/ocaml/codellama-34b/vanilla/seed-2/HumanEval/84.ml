let rec solve (n : int) : string =
    match n with
    | 0 -> "0"
    | 1 -> "1"
    | _ ->
        let (d, m) = (n mod 2, n / 2) in
        let binary_m = solve m in
        if d = 0 then binary_m
        else if d = 1 then "1" ^ binary_m
        else "10" ^ binary_m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer N, return the total sum of its digits in binary. *)
(*     Example *)
(*     >>> solve 1000 *)
(*     "1" *)
(*     >>> solve 150 *)
(*     "110" *)
(*     >>> solve 147 *)
(*     "1100" *)
(*     Variables: *)
(*     @N integer *)
(*     Constraints: 0 ≤ N ≤ 10000. *)
(*     Output: *)
(*     a string of binary number *)
