(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | h::t -> (String.sub h 0 (String.index_opt h '(' |? fun x -> x))
             ^ (String.sub h (String.rindex_opt h ')' |? fun x -> x + 1) (String.length h - (String.rindex_opt h ')' |? fun x -> x + 1))
             ^ remove_parenthesis t

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | h::t -> (String.sub h 0 (String.index_opt h '(' |> Option.default (String.length h)))
             ^ (String.sub h ((String.rindex_opt h ')' |> Option.default 0) (String.length h - (String.rindex_opt h ')' |> Option.default 0)))
             ^ remove_parenthesis t

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | h::t -> (String.sub h 0 (String.index_opt h '(' |> Option.value ~default:0))
             ^ (String.sub h ((String.rindex_opt h ')' |> Option.value ~default:0) (String.length h - (String.rindex_opt h ')' |> Option.value ~default:0)))
             ^ remove_parenthesis t

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | h::t -> (String.sub h 0 (String.index_opt h '(' |> Option.value ~default:0))
             ^ (String.sub h ((String.rindex_opt h ')' |> Option.value ~default:0) (String.length h - (String.rindex_opt h ')' |> Option.value ~default:0)))
             ^ remove_parenthesis t

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | h::t -> 
    let start = match String.index_opt h '(' with 
      | Some i -> i
      | None -> 0
    in
    let end_ = match String.rindex_opt h ')' with
      | Some i -> i
      | None -> 0
    in
    (String.sub h start (end_ - start + 1)) ^ remove_parenthesis t

