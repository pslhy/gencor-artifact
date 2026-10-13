let rec max_of_nth (test_list : int list list) (n : int) : int =
    match test_list with
    | [] -> raise (Invalid_argument "List is empty")
    | h::t -> if n >= List.length h then raise (Invalid_argument "Column index out of bounds")
                else (nth_element n h) :: max_of_nth t (n+1)
    ;;

let rec nth_element (n : int) (lst : 'a list) : 'a =
   match n, lst with
   | 0, h::_ -> h
   | _, [] -> raise (Invalid_argument "Index out of bounds")
   | n, _::t -> nth_element (n-1) t
   ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
