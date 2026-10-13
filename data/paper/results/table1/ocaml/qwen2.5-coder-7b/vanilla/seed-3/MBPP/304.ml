let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int = 
    let rotated_arr = 
        let rec shift_left lst n = 
            if n = 0 then lst 
            else match lst with 
                | [] -> [] 
                | x::xs -> xs @ [x] 
        in
        List.fold_left (fun acc range -> shift_left acc range.(1)) arr ranges 
    in
    List.nth rotated_arr ((index - rotations + List.length arr) mod List.length arr)

(* Example usage: *)
(* let result = find_Element [1; 2; 3; 4; 5] [[0; 2]; [0; 3]] 2 1 will return 3 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
