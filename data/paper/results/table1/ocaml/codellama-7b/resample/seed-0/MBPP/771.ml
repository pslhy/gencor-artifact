(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:36:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
  let stack = Stack.create () in
  let len = String.length exp in
  for i = 0 to len - 1 do
    match exp.[i] with
    | '{' -> (try Stack.push (Stack.peek stack) * 2 with Stack.Empty -> 0);
    | '[' -> (try Stack.push (Stack.peek stack) * 2) with Stack.Empty -> 0);
    | ')' -> (try Stack.pop stack with Invalid_argument -> "");
    | ']' -> (try Stack.pop stack with Invalid_argument -> "");
    | _ -> ()
  done;
  match Stack.pop stack with
  | Some _ -> true
  | None -> false

let test_expression (exp : string) : bool =
  let result = check_expression exp in
  print_endline (if result then "Balanced" else "Not Balanced");
  result

let main () =
  let test = "balanced" in
  test_expression test

let () = main ()

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:52: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
  let length = String.length exp in
  let stack = Stack.create () in
  for i = 0 to length - 1 do
    match exp.[i] with
    | '{' -> (try Stack.push (Stack.peek stack) * 2 with Stack.Empty -> 0);
    | '[' -> (try Stack.push (Stack.peek stack) * 2) with Stack.Empty -> 0);
    | ')' -> (try Stack.pop stack with Invalid_argument -> "");
    | ']' -> (try Stack.pop stack with Invalid_argument -> "");
    | _ -> ()
  done;
  match Stack.pop stack with
  | Some _ -> true
  | None -> false

let test_expression (exp : string) : bool =
  let result = check_expression exp in
  print_endline (if result then "Balanced" else "Not Balanced");
  result

let main () =
  let test = "([[[]][][]])" in
  test_expression test

let () = main ()

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:52: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
  let length = String.length exp in
  let stack = Stack.create () in
  for i = 0 to length - 1 do
    match exp.[i] with
    | '{' -> (try Stack.push (Stack.peek stack) * 2 with Stack.Empty -> 0);
    | '[' -> (try Stack.push (Stack.peek stack) * 2) with Stack.Empty -> 0);
    | ')' -> (try Stack.pop stack with Invalid_argument -> "");
    | ']' -> (try Stack.pop stack with Invalid_argument -> "");
    | _ -> ()
  done;
  match Stack.pop stack with
  | Some _ -> true
  | None -> false

let test_expression (exp : string) : bool =
  let result = check_expression exp in
  print_endline (if result then "Balanced" else "Not Balanced");
  result

let main () =
  let test = "([[[]][][]])" in
  test_expression test

let () = main ()

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:52: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
  let length = String.length exp in
  let stack = Stack.create () in
  for i = 0 to length - 1 do
    match exp.[i] with
    | '{' -> (try Stack.push (Stack.peek stack) * 2 with Stack.Empty -> 0)
    | '[' -> (try Stack.push (Stack.peek stack) * 2) with Stack.Empty -> 0)
    | ')' -> (try Stack.pop stack with Invalid_argument -> "")
    | ']' -> (try Stack.pop stack with Invalid_argument -> "")
    | _ -> ()
  done;
  match Stack.pop stack with
  | Some _ -> true
  | None -> false

let test_expression (exp : string) : bool =
  let result = check_expression exp in
  print_endline (if result then "Balanced" else "Not Balanced");
  result

let main () =
  let test = "([[[]][][]])" in
  test_expression test

let () = main ()

