(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last element in a given list. *)
let rec swap_List (newList : int list) : int list =
  match newList with
  | [] -> []
  | h :: t ->
    match t with
    | h2 :: t2 ->
      begin
        let first = h in
        let last = List.nth t2 (List.length t2 - 1) in
        first :: List.nth t2 (List.length t2 - 1) :: List.rev(List.tl newList ))
      end
    | _ -> raise (Failure "List is empty")

;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:80: Syntax error: "end" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
  match newList with
  | [] -> []
  | h :: t ->
    match t with
    | [] -> [h]
    | h2 :: t2 ->
      begin
        let first = h in
        let last = List.nth t2 (List.length t2 - 1) in
        first :: List.nth t2 (List.length t2 - 1) :: swap_List (List.tl newList)
      end
    | _ -> raise (Failure "List is empty")
end


(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
  match newList with
  | [] -> []
  | h :: t ->
    match t with
    | [] -> [h]
    | h2 :: t2 ->
      begin
        let first = h in
        let last = List.nth t2 (List.length t2 - 1) in
        first :: last :: swap_List (List.tl newList)
      end
    | _ -> raise (Failure "List is empty")

