let rec average_tuple (nums : int list list) : float list = 
    (* helper function that calculates the average for a list of integers *)
    let rec avg l =
        match l with
        | [] -> 0.0
        | h :: [] -> (float_of_int h)
        | h :: t -> (float_of_int h) +. avg t in
    
    (* main function that calls avg on each sublist and returns the result as a list *)
    match nums with
    | [] -> []
    | h :: t -> (avg h) :: average_tuple t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
