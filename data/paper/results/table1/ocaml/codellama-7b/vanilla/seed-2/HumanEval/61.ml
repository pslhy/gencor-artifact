let rec correct_bracketing (brackets : string) : bool =
  let openings = ref [] in
  let closings = ref [] in

  String.iter (function
    | '(' -> openings := '(' :: !openings
    | ')' -> closings := ')' :: !closings
    | _ -> ()
  ) brackets;

  let num_openings = List.length !openings in
  let num_closings = List.length !closings in
  if num_openings <> num_closings then
    false
  else
    match (num_openings, num_closings) with
    | 0, 0 -> true
    | _, _ ->
      let rec check (opens, closes) =
        match opens, closes with
        | [], [] -> true
        | _, [] -> false
        | [], _ -> false
        | '(' :: _, ')' :: t -> check (opens, t)
      in
      check (!openings, !closings)
;;

let () =
  let b : string = read_line () in
  if correct_bracketing b then
    print_endline "true"
  else
    print_endline "false"
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     brackets is a string of "(" and ")". *)
(*     return true if every opening bracket has a corresponding closing bracket. *)
(*     >>> correct_bracketing "(" *)
(*     false *)
(*     >>> correct_bracketing "()" *)
(*     true *)
(*     >>> correct_bracketing "(()())" *)
(*     true *)
(*     >>> correct_bracketing ")(()" *)
(*     false *)
