let rec split (list : int list) : int list = 
    match list with 
    | [] -> []
    | h::t -> h :: (split t)

let rec take_every_nth (list : 'a list) (n : int) : 'a list = 
    match list, n with 
    | [], _ -> []
    | _, 0 -> []
    | h::t, _ -> h :: (take_every_nth t (n-1))

let rec remove_every_nth (list : 'a list) (n : int) : 'a list = 
    match list, n with 
    | [], _ -> []
    | _, 1 -> remove_every_nth [] (n-1)
    | h::t, _ -> h :: (remove_every_nth t (n-1))

let rec fold add base list : 'a = 
    match list with 
    | [] -> base
    | h::t -> fold add (add base h) t

let rec append list1 list2 : 'a list = 
    match list1 with 
    | [] -> list2
    | h::t -> h :: (append t list2)

let odd_numbers (list : int list) : int list = 
    split (take_every_nth list 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and only returns the odd ones. *)
