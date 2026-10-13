(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
let rec count_divisors (n : int) : bool =
    let divisors = List.rev (List.filter (fun (d : int) -> d mod n = 0) (List.range 1 n)) in
    List.length divisors mod 2 = 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:74: Unbound value "List.range" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_divisors (n : int) : bool =
    let divisors = List.filter (fun (d : int) -> d mod n = 0) (List.make n 1) in
    List.length divisors mod 2 = 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:64: Unbound value "List.make" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_divisors (n : int) : bool =
    let divisors = List.filter (fun (d : int) -> d mod n = 0) (List.init n (fun _ -> 1)) in
    List.length divisors mod 2 = 0

