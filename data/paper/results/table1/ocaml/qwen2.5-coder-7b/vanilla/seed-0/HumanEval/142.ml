let rec sum_squares (lst : int list) : int = 
  let f ix e = 
    if ix mod 3 = 0 then e * e
    else if ix mod 4 = 0 then e * e * e
    else e
  in 
  let with_indexes lst = 
    let rec loop ix lst = 
      match lst with 
      | [] -> []
      | x::xs -> (ix, x) :: loop (ix + 1) xs
    in 
    loop 0 lst
  in 
  let lst_with_indexes = with_indexes lst in 
  let sum = List.fold_left ( fun acc (ix, e) -> acc + f ix e ) 0 lst_with_indexes in
  sum


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
