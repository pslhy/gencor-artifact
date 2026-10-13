let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
  let rec sort acc li = match li with
    | [] -> acc
    | h::t -> let rec place e acc = match acc with
                | [] -> [e]
                | x::xs -> if e >= x then e::x::xs else x::(place e xs)
             in place h acc
  in List.fold_left (fun acc (k,v) -> sort acc [(k,v)]) [] dict1;;
  
let sorted_list = sort_counter [("apple", 3); ("banana", 1); ("cherry", 2)];;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
