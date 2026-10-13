
let rec starts_one_ends (n : int) : int = 
    if n = 1 then 1 else 19 * Int32.to_int (Int32.of_int n |> Int32.sub 2 |> Int32.logand (Int32.of_int 1 lxor Int32.one) |> Int32.to_int)

let () =
    assert (starts_one_ends 1 = 1);
    assert (starts_one_ends 2 = 19);
    assert (starts_one_ends 3 = 342);

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
