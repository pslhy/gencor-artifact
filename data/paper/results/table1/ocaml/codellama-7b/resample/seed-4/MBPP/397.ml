(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:29: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec median_numbers (a : int) (b : int) (c : int) : float =
    if a < b && a < c then
        (a, b, c)
    else if b > c && b < a then
        (b, a, c)
    else if c > b && c < a then
        (c, b, a)
    else raise Exit
    in
    match (a, b, c) with
    | (x, y, z) when x = y && y = z && z = x -> raise Exit (* Handling the case of equal numbers *)
    | (x, _, _) when x < 0 -> raise Exit (* Handling the case of negative numbers *)
    | (x, y, z) ->    
      Float.((y - x) / (z - x))
end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec median_numbers (a : int) (b : int) (c : int) : float =
    if a < b && a < c then
        (a, b, c)
    else if b > c && b < a then
        (b, a, c)
    else if c > b && c < a then
        (c, b, a)
    else raise Exit
    in
    match (a, b, c) with
    | (x, y, z) when x = y && y = z && z = x -> raise Exit (* Handling the case of equal numbers *)
    | (x, _, _) when x < 0 -> raise Exit (* Handling the case of negative numbers *)
    | (x, y, z) ->    
      Float.((y - x) / (z - x))
end

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec median_numbers (a : int) (b : int) (c : int) : float =
    if a < b && a < c then
        (a, b, c)
    else if b > c && b < a then
        (b, a, c)
    else if c > b && c < a then
        (c, b, a)
    else raise Exit
    in
    match (a, b, c) with
    | (x, y, z) when x = y && y = z && z = x -> raise Exit (* Handling the case of equal numbers *)
    | (x, _, _) when x < 0 -> raise Exit (* Handling the case of negative numbers *)
    | (x, y, z) ->    
      Float.((y - x) / (z - x))
end

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec median_numbers (a : int) (b : int) (c : int) : float =
  if a < b && a < c then
    (a, b, c)
  else if b > c && b < a then
    (b, a, c)
  else if c > b && c < a then
    (c, b, a)
  else
    raise Exit
  in
  match (a, b, c) with
    | (x, y, z) when x = y && y = z && z = x -> raise Exit (* Handling the case of equal numbers *)
    | (x, _, _) when x < 0 -> raise Exit (* Handling the case of negative numbers *)
    | (x, y, z) -> Float.((y - x) / (z - x))

