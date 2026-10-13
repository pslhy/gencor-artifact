let rec triangle_area (r : int) : int option = 
    (* base case: if r is <=0, there is no valid triangle *)
    if r <= 0 then None
    (* base case: if r is 1, the triangle has an area of 1 *)
    elif r = 1 then Some(1)
    (* recursive case: find the largest triangle that can be inscribed in the semicircle with radius r-1 *)
    else match triangle_area (r-1) with
        (* if there is a valid triangle with radius r-1, find the area of the triangle with radius r that can be inscribed in the same semicircle *)
        | Some(area) -> Some(area + r*r - (r-1)*(r-1))
        (* if there is no valid triangle with radius r-1, there is no valid triangle with radius r *)
        | None -> None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
