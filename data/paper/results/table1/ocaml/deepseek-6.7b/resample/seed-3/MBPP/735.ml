(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
let rec toggle_middle_bits (n : int) : int =
  if n <= 3 then n
  else 
    (1 lsl (log2 n)) + 
    (toggle_middle_bits (n land (lnot (1 lsl (log2 n)))))
  ;;

let log2 (n : int) : int = 
  let rec aux (n : int) (acc : int) : int = 
    if n <= 1 then acc
    else aux (n lsr 1) (acc + 1)
  in
  aux n 0
  ;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "log2" *)
(*     Hint: Did you mean "log"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  if n <= 3 then n
  else 
    (1 lsl (log2 n)) + 
    (toggle_middle_bits (n land (lnot (1 lsl (log2 n)))))
  ;;

let log2 (n : int) : int = 
  let rec aux (n : int) (acc : int) : int = 
    if n <= 1 then acc
    else aux (n lsr 1) (acc + 1)
  in
  aux n 0
  ;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "log2" *)
(*     Hint: Did you mean "log"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  if n <= 3 then n
  else 
    (1 lsl (log n)) + 
    (toggle_middle_bits (n land (lnot (1 lsl (log n)))))
  ;;

let rec log (n : int) : int = 
  if n <= 1 then 0
  else 1 + log (n / 2)
  ;;

