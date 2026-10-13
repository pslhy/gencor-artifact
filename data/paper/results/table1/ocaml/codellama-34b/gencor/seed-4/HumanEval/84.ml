
let rec solve (n : int) : string = 
    let ( << ) a b = a * 2 + b in
    let ( ||| ) a b = a || b in
    let rec sum n accum = 
        if n = 0 then
            accum
        else
            let bit = n mod 2 = 1 in
            let n = n / 2 in
            sum n (accum << bit)
    in
    let rec bin n = 
        if n = 0 then
            "0"
        else if n = 1 then
            "1"
        else
            bin (n / 2) ^ ((n ||| 1) << 1)
    in
    bin (sum n 0)

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
