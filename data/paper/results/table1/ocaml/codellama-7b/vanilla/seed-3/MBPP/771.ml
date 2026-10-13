let rec check_expression (exp : string) : bool =
  let stack = ref [] in
  let opn = [| '('; '{' ; '[' |] in
  let cls = [| ')'; '}'; ']' |] in
  let push ch =
    if ch = '(' || ch = '{' || ch = '[' then
      stack := ch :: !stack
    else if ch = ')' || ch = '}' || ch = ']' then
      match !stack with
      | [] -> false
      | h :: t ->
        if h = opn.(Array.to_list cls |> List.index_of ch) then
          stack := t
        else
          false
    else
      false
  in
  List.iter push (String.to_list exp);
  match !stack with
  | [] -> true
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
