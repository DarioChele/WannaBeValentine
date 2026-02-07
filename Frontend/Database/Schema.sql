CREATE TABLE valentines (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at timestamp with time zone DEFAULT timezone('utc'::text, now()),
  from_name text,
  to_name text,
  country text DEFAULT 'Unknown',
  accepted boolean DEFAULT false
);

-- Habilitar permisos de lectura/escritura pública (para este proyecto sencillo)
ALTER TABLE valentines ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public Access" ON valentines FOR ALL USING (true) WITH CHECK (true);
