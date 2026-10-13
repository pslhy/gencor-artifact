(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
let rec next_Perfect_Square (n : int) : int = 
  let rec is_Square (y : int) : bool = 
    let m = int_sqrt y in m * m = y in
  let rec search (x : int) : int = 
    if is_Square x then x else search (x + 1) in
  search (n + 1)

let () =
  let n = 10 in
  let result = next_Perfect_Square n in
  Printf.printf "The next perfect square greater than %d is %d\n" n result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "int_sqrt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int = 
  let rec is_Square (y : int) : bool = 
    let m = Int.sqrt y in m * m = y in
  let rec search (x : int) : int = 
    if is_Square x then x else search (x + 1) in
  search (n + 1)

let () =
  let n = 10 in
  let result = next_Perfect_Square n in
  Printf.printf "The next perfect square greater than %d is %d\n" n result

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "Int.sqrt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int = 
  let rec is_Square (y : int) : bool = 
    let m = Intsqrt.int_sqrt y in m * m = y in
  let rec search (x : int) : int = 
    if is_Square x then x else search (x + 1) in
  search (n + 1)

let () =
  let n = 10 in
  let result = next_Perfect_Square n in
  Printf.printf "The next perfect square greater than %d is %d\n" n result

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound module "Intsqrt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int = 
  let rec is_Square (y : int) : bool = 
    let m = Intsqrt.sqrt y in m * m = y in
  let rec search (x : int) : int = 
    if is_Square x then x else search (x + 1) in
  search (n + 1)

let () =
  let n = 10 in
  let result = next_Perfect_Square n in
  Printf.printf "The next perfect square greater than %d is %d\n" n result

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound module "Intsqrt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int = 
  let rec is_Square (y : int) : bool = 
    let m = Int.sqrt y in m * m = y in
  let rec search (x : int) : int = 
    if is_Square x then x else search (x + 1) in
  search (n + 1)

let () =
  let n = 10 in
  let result = next_Perfect_Square n in
  Printf.printf "The next perfect square greater than %d is %d\n" n result

