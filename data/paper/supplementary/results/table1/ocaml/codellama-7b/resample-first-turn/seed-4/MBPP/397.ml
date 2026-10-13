let rec median_numbers (a : int) (b : int) (c : int) : float = 
    let (min, max) =
        if a < b && a < c then (a, b, c)
        elif b > c && b < a then (b, a, c)
        elif c > b && c < a then (c, b, a) 
    else raise Exit
    in 
    match max - min with 
    2 -> raise Exit (* Handling the case of equal numbers *) 
    | n -> (* Computing the median *) 
      if (max < 0) then (Float.((max + max) + (min - (max - min)/2)))
      else Float.((max - min)/2)
      end;
end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
