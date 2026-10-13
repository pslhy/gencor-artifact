
let rec highest_Power_of_2 (n : int) : int =
match n with
| 1 -> 1
| x when x mod 2 = 0 -> highest_Power_of_2 (x/2)
| _ -> highest_Power_of_2 (n/2)

let () =
  assert (highest_Power_of_2 1 = 1);
  assert (highest_Power_of_2 2 = 2);
  assert (highest_Power_of_2 3 = 2);
  assert (highest_Power_of_2 4 = 4);
  assert (highest_Power_of_2 5 = 4);
  assert (highest_Power_of_2 6 = 4);
  assert (highest_Power_of_2 7 = 4);
  assert (highest_Power_of_2 8 = 8);
  assert (highest_Power_of_2 9 = 8);
  assert (highest_Power_of_2 10 = 8);
  assert (highest_Power_of_2 11 = 8);
  assert (highest_Power_of_2 12 = 8);
  assert (highest_Power_of_2 13 = 8);
  assert (highest_Power_of_2 14 = 8);
  assert (highest_Power_of_2 15 = 8);
  assert (highest_Power_of_2 16 = 16);
  assert (highest_Power_of_2 17 = 16);
  assert (highest_Power_of_2 18 = 16);
  assert (highest_Power_of_2 19 = 16);
  assert (highest_Power_of_2 20 = 16);
  assert (highest_Power_of_2 21 = 16);
  assert (highest_Power_of_2 22 = 16);
  assert (highest_Power_of_2 23 = 16);
  assert (highest_Power_of_2 24 = 24);
  assert (highest_Power_of_2 25 = 24);
  assert (highest_Power_of_2 26 = 24);
  assert (highest_Power_of_2 27 = 24);
  assert (highest_Power_of_2 28 = 24);
  assert (highest_Power_of_2 29 = 24);
  assert (highest_Power_of_2 30 = 24);
  assert (highest_Power_of_2 31 = 24);
  assert (highest_Power_of_2 32 = 32);
  ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
