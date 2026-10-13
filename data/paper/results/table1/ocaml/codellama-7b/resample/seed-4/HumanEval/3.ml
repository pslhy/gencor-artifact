(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You're given a list of deposit and withdrawal operations on a bank account that starts with *)
(*     zero balance. Your task is to detect if at any point the balance of account fallls below zero, and *)
(*     at that point function should return true. Otherwise it should return false. *)
(*     >>> below_zero [1; 2; 3] *)
(*     false *)
(*     >>> below_zero [1; 2; (-4); 5] *)
(*     true *)
let rec below_zero (operations : int list) : bool =
  match operations with
  | [] -> false
  | operation :: operations' ->
    let balance = operation - balance in
    if balance < 0
    then true
    else below_zero operations'

let () =
  Assert.equal ~msg:"[1; 2; 3] should not below zero" false (below_zero [1; 2; 3]);
  Assert.equal ~msg:"[1; 2; (-4); 5] should below zero" true (below_zero [1; 2; (-4); 5])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:31: Unbound value "balance" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec below_zero (operations : int list) : bool =
  match operations with
  | [] -> false
  | operation :: operations' ->
      let balance = operation - balance in
      if balance < 0
      then true
      else below_zero operations'

let () =
  Assert.equal ~msg:"[1; 2; 3] should not below zero" false (below_zero [1; 2; 3]);
  Assert.equal ~msg:"[1; 2; (-4); 5] should below zero" true (below_zero [1; 2; (-4); 5])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:33: Unbound value "balance" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec below_zero (operations : int list) : bool =
  match operations with
  | [] -> false
  | operation :: operations' ->
      let balance = operation in
      if balance < 0
      then true
      else below_zero operations'

let () =
  Assert.equal ~msg:"[1; 2; 3] should not below zero" false (below_zero [1; 2; 3]);
  Assert.equal ~msg:"[1; 2; (-4); 5] should below zero" true (below_zero [1; 2; (-4); 5])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:3: Unbound module "Assert" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec below_zero (operations : int list) : bool =
  match operations with
  | [] -> false
  | operation :: operations' ->
      let balance = operation in
      if balance < 0
      then true
      else below_zero operations'

let () =
  Printf.printf "%b\n" (below_zero [1; 2; 3]);
  Printf.printf "%b\n" (below_zero [1; 2; (-4); 5])

