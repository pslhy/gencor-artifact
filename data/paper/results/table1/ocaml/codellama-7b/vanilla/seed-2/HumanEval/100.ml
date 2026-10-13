let rec make_a_pile (n : int) : int list =
  match n with
  | 1 -> [1]
  | _ ->
    let next_odd =
      if n mod 2 = 0 then n + 1 else n + 2
    in
    let next_even =
      if n mod 2 = 0 then n + 2 else n + 1
    in
    let stones_in_next_level =
      if n mod 2 = 0 then next_even else next_odd
    in
    stones_in_next_level :: make_a_pile (n - 1)

let () =
  let input = read_int () in
  let result = make_a_pile input in
  Printf.printf "%d\n" input;
  Printf.printf "%d\n" @@ List.length result;
  List.iter (List.iter (Printf.printf "%d ")) result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, you have to make a pile of n levels of stones. *)
(*     The first level has n stones. *)
(*     The number of stones in the next level is: *)
(*     - the next odd number if n is odd. *)
(*     - the next even number if n is even. *)
(*     Return the number of stones in each level in a list, where element at index *)
(*     i represents the number of stones in the level (i+1). *)
(*     Examples: *)
(*     >>> make_a_pile 3 *)
(*     [3; 5; 7] *)
