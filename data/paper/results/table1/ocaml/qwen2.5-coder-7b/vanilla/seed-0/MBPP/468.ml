let rec max_product (arr : int list) : int = 
  let rec helper dp i max_val = 
    if i = List.length arr then 
      max_val 
    else 
      let max_prod = dp.(i) in
      let max_val = max max_val max_prod in
      let rec find_max_next idx max_next = 
        if idx = List.length arr then 
          max_next 
        else 
          let value = List.nth arr idx in
          if value > List.nth arr i then 
            find_max_next (idx + 1) (max max_next (value * max_prod))
          else 
            find_max_next (idx + 1) max_next 
      in
      let max_next = find_max_next (i + 1) 0 in
      dp.(i + 1) <- max_next;
      helper dp (i + 1) max_val 
  in
  let dp = Array.create (List.length arr) 0 in
  for i = 0 to List.length arr - 1 do
    dp.(i) <- List.nth arr i
  done;
  helper dp 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
