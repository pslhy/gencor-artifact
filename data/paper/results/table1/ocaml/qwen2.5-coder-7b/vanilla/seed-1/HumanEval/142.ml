let rec sum_squares (lst : int list) : int = 
  let rec helper (lst : int list) (index : int) (sum : int) : int = 
    match lst with
    | [] -> sum
    | x :: xs -> 
        let new_sum = if index mod 3 = 0 then sum + x * x 
                      else if index mod 4 = 0 && index mod 3 <> 0 then sum + x * x * x 
                      else sum + x in 
        helper xs (index + 1) new_sum 
  in 
  helper lst 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     " *)
(*     This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a *)
(*     multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not *)
(*     change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. *)
(*     Examples: *)
(*     >>> lst *)
(*     [1; 2; 3] *)
(*     >>> lst *)
(*     [] *)
(*     >>> lst *)
(*     [(-1); (-5); 2; (-1); (-5)] *)
