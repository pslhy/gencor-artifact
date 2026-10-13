let rec rear_extract (test_list :  (int * string * int) list) : int list = 
    (* Declare and initialize new list for return type *)
    let result : int list = []; 

    (* Base Case - If test list is empty, return empty result list *)
    if test_list = [] then 
        result 
    else 
        (* Pattern Match on head and tail of the test list *)
        match test_list with 
        | (x, y, z) :: rest -> 
            (* Add rear element of tuple to result list *)
            let result = z :: result in 
            (* Recursively call rear_extract function on rest of the list *)
            rear_extract rest 
        | [] -> 
            (* If the list has only one element, return that element *)
            test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list of tuples and returns a list containing the rear element of each tuple. *)
