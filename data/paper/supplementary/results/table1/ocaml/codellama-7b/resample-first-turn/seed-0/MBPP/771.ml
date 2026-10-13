let rec check_expression (exp : string) : bool =
  let stack = create_stack () in
  ignore (scan_string exp stack);
  match stack with
  | Empty_stack -> true
  | Nonempty_stack -> false

and scan_string (str : string) (stack : 'a stack) : unit =
  let len = String.length str in
  for i = 0 to len - 1 do
    match str.[i] with
    | '{' | '(' | '[' -> push stack (str.[i])
    | '}' | ')' | ']' ->
      begin
        match pop stack with
        | Some '{' -> push stack '}'
        | Some '(' -> push stack ')'
        | Some '[' -> push stack ']'
        | _ -> raise (Failure "unmatched parenthesis")
      end
    | _ -> ()
  done

and create_stack () : 'a stack = Empty_stack

and push (stack : 'a stack) (value : 'a) : unit =
  match stack with
  | Empty_stack -> stack
  | Nonempty_stack -> Nonempty_stack

and pop (stack : 'a stack) : 'a option =
  match stack with
  | Empty_stack -> None
  | Nonempty_stack -> Some (pop stack)

and type 'a stack =
  | Empty_stack
  | Nonempty_stack of 'a * 'a stack;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
