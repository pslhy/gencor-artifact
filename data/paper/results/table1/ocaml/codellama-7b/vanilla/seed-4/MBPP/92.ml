let rec is_undulating (n : int) : bool = 
    (* Check if the number is odd *)
    if (n mod 2 = 1) then
        let rec aux (v : int list) : bool = 
            (* If the list is empty, return False *)
            if (List.length v = 0) then 
                false
            (* If the first element is equal to the current number, return False *)
            else if (List.hd v = n) then 
                false
            (* If the current element is not equal to the previous element, return True *)
            else if (List.hd v <> List.nth v 1) then 
                true
            (* Otherwise, check the next element *)
            else
                aux (List.tl v)
        in
        (* Create a list of all odd numbers greater than 1 and less than or equal to the given number *)
        let v = List.filter (fun x -> x mod 2 = 1 && x <= n) [1..n] in
        (* Check if the list has any positive differences *)
        aux v
    (* If the number is even, return False *)
    else
        false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
