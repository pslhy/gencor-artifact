let rec is_multiply_prime (a : int) : bool =
  if a < 3 then false
  else if a = 3 then true
  else if a mod 2 = 0 && is_multiply_prime (a / 2) then true
  else if a mod 3 = 0 && is_multiply_prime (a / 3) then true
  else if a mod 5 = 0 && is_multiply_prime (a / 5) then true
  else false

(** Tests **)

let test_is_multiply_prime () : (bool * bool) list =
  [(is_multiply_prime 90, true);
   (is_multiply_prime 30, true);
   (is_multiply_prime 8, false);
   (is_multiply_prime 12, false);
   (is_multiply_prime 21, false);
   (is_multiply_prime 100, false)]

let () =
  let results =
    List.map
      (fun (result, expected) ->
        if result = expected then "."
        else "x")
      (test_is_multiply_prime ())
  in
  if List.for_all ((=) '.') results then
    print_endline "Tests passed!"
  else
    print_endline "Tests failed!"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
