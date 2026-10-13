let rec check_expression (exp : string) : bool =
  let rec aux stackList currentIndex len =
    if currentIndex = len then
      match stackList with
      | [] -> true
      | _ -> false
    else
      match exp.[currentIndex] with
      | '{' | '[' | '(' -> aux (exp.[currentIndex] :: stackList) (currentIndex + 1) len
      | '}' | ']' | ')' ->
        begin
          match stackList with
          | [] -> false
          | head :: tail ->
            if (head = '(' && exp.[currentIndex] = ')') ||
               (head = '[' && exp.[currentIndex] = ']') || 
               (head = '{' && exp.[currentIndex] = '}')
            then aux tail (currentIndex + 1) len
            else false
        end
      | _ -> aux stackList (currentIndex + 1) len
  in
  aux [] 0 (String.length exp)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
