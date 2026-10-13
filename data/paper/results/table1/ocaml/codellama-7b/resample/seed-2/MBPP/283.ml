(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
let rec validate (n : int) : bool =
  let digits = List.map (fun (d, c) -> (d, c = d)) (List.count (fun (d, c) -> d = c) (List.group (string_of_int n))) in
  letFrequencies freqs = List.forall (fun (d, f) -> if f > d then false else true) freqs in
  validate freqs;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:53: Unbound value "List.count" *)
(*     Hint: Did you mean "cons"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
  let digits = List.map (fun x -> x = n mod 10) (List.group (string_of_int n)) in
  List.fold_left (fun acc x -> if acc then x else false) true digits

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:50: Unbound value "List.group" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
  let digits = List.map (fun x -> x = n mod 10) (List.group (string_of_int n)) in
  List.fold_left (fun acc x -> if acc then x else false) true digits

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:50: Unbound value "List.group" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
  let digits = List.init (String.length (string_of_int n)) (fun i -> n mod (10 ** i)) in
  List.for_all ((=) (n mod 10)) digits

