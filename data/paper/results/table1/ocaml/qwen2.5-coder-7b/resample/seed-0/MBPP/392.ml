(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n). *)
let rec get_max_sum (n : int) : int = 
  let rec helper n memo = 
    if Map.mem n memo then 
      Map.find n memo
    else 
      let result = max n (helper (n / 2) memo + helper (n / 3) memo + helper (n / 4) memo + helper (n / 5) memo) in
      Map.add n result memo
  in
  helper n (Map.empty)

let maximum_sum = get_max_sum

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Unbound value "Map.mem" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_sum (n : int) : int = 
  let rec helper n memo = 
    if Memo.mem n memo then 
      Memo.find n memo
    else 
      let result = max n (helper (n / 2) memo + helper (n / 3) memo + helper (n / 4) memo + helper (n / 5) memo) in
      Memo.add n result memo
  in
  helper n (Memo.create 1000)

let maximum_sum = get_max_sum

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Unbound module "Memo" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_sum (n : int) : int = 
  let rec helper n memo = 
    if Memo.mem n memo then 
      Memo.find n memo
    else 
      let result = max n (helper (n / 2) memo + helper (n / 3) memo + helper (n / 4) memo + helper (n / 5) memo) in
      Memo.add n result memo
  in
  helper n (Memo.create 1000)

module Memo : sig
  type 'a t
  val create : int -> 'a t
  val mem : 'a -> 'a t -> bool
  val add : 'a -> 'a -> 'a t -> unit
  val find : 'a -> 'a t -> 'a
end = struct
  type 'a t = (int, 'a) Hashtbl.t
  let create size = Hashtbl.create size
  let mem key memo = Hashtbl.mem memo key
  let add key value memo = Hashtbl.add memo key value
  let find key memo = Hashtbl.find memo key
end

let maximum_sum = get_max_sum

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Unbound module "Memo" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_max_sum (n : int) : int = 
  let rec helper n memo = 
    if Hashtbl.mem memo n then 
      Hashtbl.find memo n
    else 
      let result = max n (helper (n / 2) memo + helper (n / 3) memo + helper (n / 4) memo + helper (n / 5) memo) in
      Hashtbl.add memo n result;
      result
  in
  let memo = Hashtbl.create 1000 in
  helper n memo

let maximum_sum = get_max_sum

