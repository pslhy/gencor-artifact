
let rec digits (n : int) : int =
    let isEven x = x mod 2 = 0 in
    match n with
    | 0 -> 1
    | _ ->
        let oddDigits = List.filter (fun x -> not (isEven x)) (digits n) in
        List.fold_left (fun acc x -> acc * x) 1 oddDigits

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the product of the odd digits. *)
(*     Return 0 if all digits are even. *)
(*     For example: *)
(*     >>> digits 1 *)
(*     1 *)
(*     >>> digits 4 *)
(*     0 *)
(*     >>> digits 235 *)
(*     15 *)
