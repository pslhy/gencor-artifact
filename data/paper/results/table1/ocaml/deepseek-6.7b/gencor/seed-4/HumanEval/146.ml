
let rec specialFilter (nums : int list) : int =
  match nums with
  | [] -> 0
  | h::t -> 
      let last_digit = abs (h mod 10) in 
      let first_digit = abs ((h / 10) mod 10) in
      if (first_digit * last_digit) mod 2 <> 0 && h > 10 then 
          1 + specialFilter t
      else specialFilter t

(*Test Cases:*)

(*The test cases are commented out because in OCaml language the statements themselves do not produce output and are used to supply input for the above function.
ocamlc will not compile these lines. Instead, these lines are for understanding the requirement of this function.

let () =
  print_string (string_of_int (specialFilter [15; (-73); 14; (-15)])) ;
  print_newline ()

let () = 
  print_string (string_of_int (specialFilter [33; (-2); (-3); 45; 21; 109])) ;
  print_newline ()
*)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list of numbers as input and returns *)
(*     the number of elements in the list that are greater than 10 and both *)
(*     first and last digits of a number are odd (1, 3, 5, 7, 9). *)
(*     For example: *)
(*     >>> specialFilter [15; (-73); 14; (-15)] *)
(*     1 *)
(*     >>> specialFilter [33; (-2); (-3); 45; 21; 109] *)
(*     2 *)
