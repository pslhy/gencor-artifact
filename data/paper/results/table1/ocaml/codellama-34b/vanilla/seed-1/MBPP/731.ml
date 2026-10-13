let rec lateralsurface_cone (r : int) (h : int) : float =
    let area = 0.0 in
    let step = 0.0 in
    let half_angle = 0.0 in
    let rad_per_step = atan (h /. (2. *. r)) in
    let y_step = cos half_angle *. r in
    let z_step = sin half_angle *. r in
    let step_count = int_of_float (rad_per_step /. step) in
    for i = 0 to step_count do
        let y = y_step *. float_of_int i in
        let z = z_step *. float_of_int i in
        area <- area +. (y * z)
    done;
    area *. 2.0

let main (r : int) (h : int) =
    let area = lateralsurface_cone r h in
    Printf.printf "%f\n" area


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
