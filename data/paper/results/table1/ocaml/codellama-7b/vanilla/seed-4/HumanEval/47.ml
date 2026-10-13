let rec median (l : int list) : float = 
    (* Get the length of the list *)
    let len = List.length l in

    (* Check if the list is empty *)
    if len = 0 then
        (* Raise an error if list is empty *)
        raise (Failure "Cannot compute median of empty list")
    else
        (* Get the middle element of the list *)
        let middle = List.nth l (len / 2) in

        (* Check if list has odd length *)
        if len mod 2 = 1 then
            (* Return the middle element as the median *)
            float_of_int middle
        else
            (* Compute average of middle two elements and return *)
            float_of_int (middle + List.nth l ((len / 2) + 1)) /. 2.0

;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return median of elements in the list l. *)
(*     >>> median [3; 1; 2; 4; 5] *)
(*     3.0 *)
(*     >>> median [(-10); 4; 6; 1000; 10; 20] *)
(*     15.0 *)
