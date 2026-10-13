(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a non-empty list of integers lst. add the even elements that are at odd indices.. *)
(*     Examples: *)
(*     >>> add [4; 2; 6; 7] *)
(*     2 *)
let rec add (lst : int list) : int =
match lst with
| [] -> 0
| h :: t -> let rec aux (lst : int list) : int =
  match lst with
  | [] -> 0
  | h :: t -> if h % 2 = 0 then h + aux t else aux t in
  aux lst

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:20: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add (lst : int list) : int =
  match lst with
  | [] -> 0
  | h :: t -> if h = 2 or h = 5 or h = 8 then h + add t else add t in

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add (lst : int list) : int =
  if lst = [] then 0
  else if hd lst = 2 or hd lst = 5 or hd lst = 8 then hd lst + add (tl lst) else add (tl lst)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:22: Unbound value "\#or" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add (lst : int list) : int =
  match lst with
  | [] -> 0
  | hd :: tl -> if hd = 2 #or hd = 5 #or hd = 8 then hd + add tl else add tl

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add (lst : int list) : int =
  match lst with
  | [] -> 0
  | hd :: tl -> if hd = 2 || hd = 5 || hd = 8 then hd + add tl else add tl

