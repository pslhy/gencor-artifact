let rec will_it_fly (q : int list) (w : int) : bool = 
    (* Check if the list is balanced and its sum is less than or equal to the maximum weight *)
    let is_balanced = 
        let rec check_balanced n = 
            match n with
            | [] -> true
            | h::t ->
                let (left, right) = List.rev t in
                (* If the sum of the elements on both sides is equal, and the list is balanced, then the list is balanced *)
                if h = right && check_balanced left then true else false
        in
        check_balanced q
    in
    let weight = List.fold_left (fun acc x -> x) 0 q in
    is_balanced && weight <= w


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the object q will fly, and false otherwise. *)
(*     The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w. *)
(*     Example: *)
(*     >>> will_it_fly [1; 2] 5 *)
(*     false *)
(*     # 1+2 is less than the maximum possible weight, but it's unbalanced. *)
(*     >>> will_it_fly [3; 2; 3] 1 *)
(*     false *)
(*     # it's balanced, but 3+2+3 is more than the maximum possible weight. *)
(*     >>> will_it_fly [3; 2; 3] 9 *)
(*     true *)
(*     # 3+2+3 is less than the maximum possible weight, and it's balanced. *)
(*     >>> will_it_fly [3] 5 *)
(*     true *)
(*     # 3 is less than the maximum possible weight, and it's balanced. *)
